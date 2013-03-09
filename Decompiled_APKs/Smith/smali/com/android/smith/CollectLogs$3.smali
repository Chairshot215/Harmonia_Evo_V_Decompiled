.class Lcom/android/smith/CollectLogs$3;
.super Ljava/lang/Object;
.source "CollectLogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/smith/CollectLogs;->createListDialog()V
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
    .line 723
    iput-object p1, p0, Lcom/android/smith/CollectLogs$3;->this$0:Lcom/android/smith/CollectLogs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v3, 0x7f04005d

    const/4 v6, 0x7

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 726
    iget-object v1, p0, Lcom/android/smith/CollectLogs$3;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/android/smith/CollectLogs;->access$000(Lcom/android/smith/CollectLogs;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, tab:Ljava/lang/String;
    const-string v1, "Internal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 730
    iget-object v1, p0, Lcom/android/smith/CollectLogs$3;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonInternalUpload:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/smith/CollectLogs;->access$1100(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/android/smith/CollectLogs$3;->this$0:Lcom/android/smith/CollectLogs;

    invoke-virtual {v2, v3}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v1, p0, Lcom/android/smith/CollectLogs$3;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonInternalUpload:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/smith/CollectLogs;->access$1100(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 733
    iget-object v1, p0, Lcom/android/smith/CollectLogs$3;->this$0:Lcom/android/smith/CollectLogs;

    new-instance v2, Lcom/android/smith/CollectLogs$LogsThread;

    iget-object v3, p0, Lcom/android/smith/CollectLogs$3;->this$0:Lcom/android/smith/CollectLogs;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/smith/CollectLogs$LogsThread;-><init>(Lcom/android/smith/CollectLogs;III)V

    #setter for: Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v1, v2}, Lcom/android/smith/CollectLogs;->access$602(Lcom/android/smith/CollectLogs;Lcom/android/smith/CollectLogs$LogsThread;)Lcom/android/smith/CollectLogs$LogsThread;

    .line 734
    iget-object v1, p0, Lcom/android/smith/CollectLogs$3;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v1}, Lcom/android/smith/CollectLogs;->access$600(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/smith/CollectLogs$LogsThread;->start()V

    .line 752
    :goto_0
    return-void

    .line 736
    :cond_0
    const-string v1, "Phone/Tablet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    iget-object v1, p0, Lcom/android/smith/CollectLogs$3;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonPhoneUpload:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/smith/CollectLogs;->access$1600(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/android/smith/CollectLogs$3;->this$0:Lcom/android/smith/CollectLogs;

    invoke-virtual {v2, v3}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 739
    iget-object v1, p0, Lcom/android/smith/CollectLogs$3;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonPhoneUpload:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/smith/CollectLogs;->access$1600(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 741
    iget-object v1, p0, Lcom/android/smith/CollectLogs$3;->this$0:Lcom/android/smith/CollectLogs;

    new-instance v2, Lcom/android/smith/CollectLogs$LogsThread;

    iget-object v3, p0, Lcom/android/smith/CollectLogs$3;->this$0:Lcom/android/smith/CollectLogs;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/smith/CollectLogs$LogsThread;-><init>(Lcom/android/smith/CollectLogs;III)V

    #setter for: Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v1, v2}, Lcom/android/smith/CollectLogs;->access$1402(Lcom/android/smith/CollectLogs;Lcom/android/smith/CollectLogs$LogsThread;)Lcom/android/smith/CollectLogs$LogsThread;

    .line 742
    iget-object v1, p0, Lcom/android/smith/CollectLogs$3;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v1}, Lcom/android/smith/CollectLogs;->access$1400(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/smith/CollectLogs$LogsThread;->start()V

    goto :goto_0

    .line 746
    :cond_1
    iget-object v1, p0, Lcom/android/smith/CollectLogs$3;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonExternalUpload:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/smith/CollectLogs;->access$900(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/android/smith/CollectLogs$3;->this$0:Lcom/android/smith/CollectLogs;

    invoke-virtual {v2, v3}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 747
    iget-object v1, p0, Lcom/android/smith/CollectLogs$3;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonExternalUpload:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/smith/CollectLogs;->access$900(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 749
    iget-object v1, p0, Lcom/android/smith/CollectLogs$3;->this$0:Lcom/android/smith/CollectLogs;

    new-instance v2, Lcom/android/smith/CollectLogs$LogsThread;

    iget-object v3, p0, Lcom/android/smith/CollectLogs$3;->this$0:Lcom/android/smith/CollectLogs;

    invoke-direct {v2, v3, v5, v5, v6}, Lcom/android/smith/CollectLogs$LogsThread;-><init>(Lcom/android/smith/CollectLogs;III)V

    #setter for: Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v1, v2}, Lcom/android/smith/CollectLogs;->access$802(Lcom/android/smith/CollectLogs;Lcom/android/smith/CollectLogs$LogsThread;)Lcom/android/smith/CollectLogs$LogsThread;

    .line 750
    iget-object v1, p0, Lcom/android/smith/CollectLogs$3;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v1}, Lcom/android/smith/CollectLogs;->access$800(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/smith/CollectLogs$LogsThread;->start()V

    goto :goto_0
.end method

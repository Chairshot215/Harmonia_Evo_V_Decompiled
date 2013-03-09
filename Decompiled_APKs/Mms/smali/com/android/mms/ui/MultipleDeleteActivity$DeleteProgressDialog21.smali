.class Lcom/android/mms/ui/MultipleDeleteActivity$DeleteProgressDialog21;
.super Landroid/app/ProgressDialog;
.source "MultipleDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultipleDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteProgressDialog21"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultipleDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MultipleDeleteActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 633
    iput-object p1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteProgressDialog21;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    .line 634
    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 635
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 660
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 652
    const-string v0, "MultipleDeleteActivity"

    const-string v1, "onBackPress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    sget-boolean v0, Lcom/android/mms/ui/ConversationListBaseActivity;->sStartDeleting:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteProgressDialog21;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    const v1, 0x7f090327

    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteProgressDialog21;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mCancelDeleteMessagesListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$500(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    #calls: Lcom/android/mms/ui/MultipleDeleteActivity;->confirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$600(Lcom/android/mms/ui/MultipleDeleteActivity;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 655
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 639
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 640
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteProgressDialog21;->setIndeterminate(Z)V

    .line 641
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteProgressDialog21;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$400(Lcom/android/mms/ui/MultipleDeleteActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteProgressDialog21;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mMode:I
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$400(Lcom/android/mms/ui/MultipleDeleteActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteProgressDialog21;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    const v1, 0x7f090383

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteProgressDialog21;->setMessage(Ljava/lang/CharSequence;)V

    .line 647
    :goto_0
    return-void

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteProgressDialog21;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    const v1, 0x7f090328

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteProgressDialog21;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

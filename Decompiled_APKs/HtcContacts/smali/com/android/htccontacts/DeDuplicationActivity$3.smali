.class Lcom/android/htccontacts/DeDuplicationActivity$3;
.super Ljava/lang/Object;
.source "DeDuplicationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/DeDuplicationActivity;->displayDialogConfirmDeleteContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/DeDuplicationActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/DeDuplicationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/htccontacts/DeDuplicationActivity$3;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 498
    const-string v1, "DeDuplicationActivity"

    const-string v2, "User confirm to delete all duplicated contacts, deleting..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$3;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    new-instance v2, Lcom/htc/app/HtcProgressDialog;

    iget-object v3, p0, Lcom/android/htccontacts/DeDuplicationActivity$3;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-direct {v2, v3}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForDelete:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1, v2}, Lcom/android/htccontacts/DeDuplicationActivity;->access$902(Lcom/android/htccontacts/DeDuplicationActivity;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    .line 500
    iget-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$3;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForDelete:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/DeDuplicationActivity;->access$900(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    const v2, 0x7f0a03d5

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 501
    iget-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$3;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForDelete:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/DeDuplicationActivity;->access$900(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity$3;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    const v3, 0x7f0a0193

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/DeDuplicationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$3;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForDelete:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/DeDuplicationActivity;->access$900(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 503
    iget-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$3;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForDelete:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/DeDuplicationActivity;->access$900(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 504
    iget-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$3;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForDelete:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/DeDuplicationActivity;->access$900(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity$3;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mSelectedCount:I
    invoke-static {v2}, Lcom/android/htccontacts/DeDuplicationActivity;->access$200(Lcom/android/htccontacts/DeDuplicationActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 505
    iget-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$3;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForDelete:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/DeDuplicationActivity;->access$900(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/DeDuplicationActivity$3;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 506
    iget-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$3;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForDelete:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/DeDuplicationActivity;->access$900(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 507
    iget-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$3;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForDelete:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/DeDuplicationActivity;->access$900(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 508
    iget-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$3;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mProgressDialogForDelete:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/DeDuplicationActivity;->access$900(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 509
    new-instance v0, Lcom/android/htccontacts/DeDuplicationActivity$DeleteDuplicatedThread;

    iget-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$3;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-direct {v0, v1}, Lcom/android/htccontacts/DeDuplicationActivity$DeleteDuplicatedThread;-><init>(Lcom/android/htccontacts/DeDuplicationActivity;)V

    .line 510
    .local v0, thread:Lcom/android/htccontacts/DeDuplicationActivity$DeleteDuplicatedThread;
    invoke-virtual {v0}, Lcom/android/htccontacts/DeDuplicationActivity$DeleteDuplicatedThread;->start()V

    .line 511
    return-void
.end method

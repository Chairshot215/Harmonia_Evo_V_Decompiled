.class Lcom/android/mms/ui/DeleteBySelectActivity$DeleteProgressDialog21;
.super Landroid/app/ProgressDialog;
.source "DeleteBySelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeleteBySelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteProgressDialog21"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DeleteBySelectActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/DeleteBySelectActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteProgressDialog21;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    .line 449
    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 450
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 461
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 465
    const-string v0, "DeleteBySelectActivity"

    const-string v1, "onBackPress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    sget-boolean v0, Lcom/android/mms/ui/ConversationListBaseActivity;->sStartDeleting:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteProgressDialog21;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    const v1, 0x7f090327

    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteProgressDialog21;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mCancelDeleteMessagesListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v2}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$500(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    #calls: Lcom/android/mms/ui/DeleteBySelectActivity;->confirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$600(Lcom/android/mms/ui/DeleteBySelectActivity;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 468
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 454
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 455
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteProgressDialog21;->setIndeterminate(Z)V

    .line 456
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteProgressDialog21;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    const v1, 0x7f090328

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DeleteBySelectActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteProgressDialog21;->setMessage(Ljava/lang/CharSequence;)V

    .line 457
    return-void
.end method

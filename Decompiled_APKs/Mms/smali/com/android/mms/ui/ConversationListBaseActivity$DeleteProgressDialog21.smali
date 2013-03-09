.class public Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog21;
.super Landroid/app/ProgressDialog;
.source "ConversationListBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteProgressDialog21"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListBaseActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationListBaseActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 3157
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog21;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    .line 3158
    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3159
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 3181
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 3190
    const-string v0, "ConversationListBaseActivity"

    const-string v1, "onBackPress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    sget-boolean v0, Lcom/android/mms/ui/ConversationListBaseActivity;->sStartDeleting:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3192
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog21;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog21;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    const v2, 0x7f090327

    const v3, 0x20c01fc

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog21;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    #getter for: Lcom/android/mms/ui/ConversationListBaseActivity;->mCancelDeleteMessagesListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListBaseActivity;->access$700(Lcom/android/mms/ui/ConversationListBaseActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    #calls: Lcom/android/mms/ui/ConversationListBaseActivity;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    invoke-static {v1, v2, v3, v4}, Lcom/android/mms/ui/ConversationListBaseActivity;->access$800(Lcom/android/mms/ui/ConversationListBaseActivity;IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/ConversationListBaseActivity;->confrimDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->access$602(Lcom/android/mms/ui/ConversationListBaseActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 3194
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 3163
    const-string v0, "ConversationListBaseActivity"

    const-string v1, "onCreate() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 3166
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog21;->setIndeterminate(Z)V

    .line 3168
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog21;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    #getter for: Lcom/android/mms/ui/ConversationListBaseActivity;->mProgressDialogMode:I
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListBaseActivity;->access$500(Lcom/android/mms/ui/ConversationListBaseActivity;)I

    move-result v0

    if-eq v0, v2, :cond_0

    sget-boolean v0, Lcom/android/mms/ui/ConversationListBaseActivity;->sStartMoving:Z

    if-eqz v0, :cond_1

    .line 3170
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog21;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    const v1, 0x7f090383

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog21;->setMessage(Ljava/lang/CharSequence;)V

    .line 3176
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog21;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/ConversationListBaseActivity;->mProgressDialogMode:I
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->access$502(Lcom/android/mms/ui/ConversationListBaseActivity;I)I

    .line 3177
    return-void

    .line 3174
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog21;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    const v1, 0x7f090328

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListBaseActivity$DeleteProgressDialog21;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 3185
    const/4 v0, 0x0

    return v0
.end method

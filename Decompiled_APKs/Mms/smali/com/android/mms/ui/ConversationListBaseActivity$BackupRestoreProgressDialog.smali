.class public Lcom/android/mms/ui/ConversationListBaseActivity$BackupRestoreProgressDialog;
.super Landroid/app/ProgressDialog;
.source "ConversationListBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackupRestoreProgressDialog"
.end annotation


# instance fields
.field private isBackup:Z

.field final synthetic this$0:Lcom/android/mms/ui/ConversationListBaseActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationListBaseActivity;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "isBackup"

    .prologue
    .line 3202
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$BackupRestoreProgressDialog;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    .line 3203
    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3204
    iput-boolean p3, p0, Lcom/android/mms/ui/ConversationListBaseActivity$BackupRestoreProgressDialog;->isBackup:Z

    .line 3205
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 3221
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 3225
    const-string v0, "ConversationListBaseActivity"

    const-string v1, "Backup or Restore onBackPress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$BackupRestoreProgressDialog;->isBackup:Z

    if-eqz v0, :cond_0

    .line 3227
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$BackupRestoreProgressDialog;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$BackupRestoreProgressDialog;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    const v2, 0x7f0903d5

    const v3, 0x7f0903d7

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListBaseActivity$BackupRestoreProgressDialog;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    #getter for: Lcom/android/mms/ui/ConversationListBaseActivity;->mCancelBackupRestoreMessagesListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListBaseActivity;->access$900(Lcom/android/mms/ui/ConversationListBaseActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    #calls: Lcom/android/mms/ui/ConversationListBaseActivity;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    invoke-static {v1, v2, v3, v4}, Lcom/android/mms/ui/ConversationListBaseActivity;->access$800(Lcom/android/mms/ui/ConversationListBaseActivity;IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/ConversationListBaseActivity;->confrimDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->access$602(Lcom/android/mms/ui/ConversationListBaseActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 3234
    :goto_0
    return-void

    .line 3231
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$BackupRestoreProgressDialog;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$BackupRestoreProgressDialog;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    const v2, 0x7f0903d6

    const v3, 0x7f0903d8

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListBaseActivity$BackupRestoreProgressDialog;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    #getter for: Lcom/android/mms/ui/ConversationListBaseActivity;->mCancelBackupRestoreMessagesListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListBaseActivity;->access$900(Lcom/android/mms/ui/ConversationListBaseActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    #calls: Lcom/android/mms/ui/ConversationListBaseActivity;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    invoke-static {v1, v2, v3, v4}, Lcom/android/mms/ui/ConversationListBaseActivity;->access$800(Lcom/android/mms/ui/ConversationListBaseActivity;IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/ConversationListBaseActivity;->confrimDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->access$602(Lcom/android/mms/ui/ConversationListBaseActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 3209
    const-string v0, "ConversationListBaseActivity"

    const-string v1, "onCreate() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 3212
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListBaseActivity$BackupRestoreProgressDialog;->setIndeterminate(Z)V

    .line 3213
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$BackupRestoreProgressDialog;->isBackup:Z

    if-eqz v0, :cond_0

    .line 3214
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$BackupRestoreProgressDialog;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    const v1, 0x7f090276

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListBaseActivity$BackupRestoreProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3217
    :goto_0
    return-void

    .line 3216
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$BackupRestoreProgressDialog;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    const v1, 0x7f09027b

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListBaseActivity$BackupRestoreProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 3238
    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/htc/android/mail/huxservice/HuxRestoreAccount;
.super Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
.source "HuxRestoreAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/huxservice/HuxRestoreAccount$HuxRestoreRequestHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HuxRestoreAccount"


# instance fields
.field private confirmRestoreService:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;-><init>()V

    .line 233
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$3;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$3;-><init>(Lcom/htc/android/mail/huxservice/HuxRestoreAccount;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount;->confirmRestoreService:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method protected backScreen()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCurrentScreen:I

    packed-switch v0, :pswitch_data_0

    .line 193
    :goto_0
    return-void

    .line 186
    :pswitch_0
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/huxservice/HuxRestoreAccount;->setResult(I)V

    .line 187
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxRestoreAccount;->finish()V

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method protected btnFncL()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCurrentScreen:I

    sparse-switch v0, :sswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 200
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxRestoreAccount;->backScreen()V

    goto :goto_0

    .line 197
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method protected btnFncR()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 207
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCurrentScreen:I

    sparse-switch v0, :sswitch_data_0

    .line 220
    :goto_0
    return-void

    .line 209
    :sswitch_0
    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/huxservice/HuxRestoreAccount;->showDialog(I)V

    goto :goto_0

    .line 212
    :sswitch_1
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/huxservice/HuxRestoreAccount;->showDialog(I)V

    .line 213
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 217
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/htc/android/mail/Account;->setNeedSyncHUXAccount(Landroid/content/Context;Z)V

    goto :goto_0

    .line 207
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x15 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 115
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxRestoreAccount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 118
    invoke-virtual {p0, p2, p3}, Lcom/htc/android/mail/huxservice/HuxRestoreAccount;->setResult(ILandroid/content/Intent;)V

    .line 119
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxRestoreAccount;->finish()V

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 121
    :cond_2
    const/16 v0, 0x32

    if-eq p1, v0, :cond_1

    .line 124
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxRestoreAccount"

    const-string v1, "onCreate> "

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$HuxRestoreRequestHandler;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p0}, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$HuxRestoreRequestHandler;-><init>(Lcom/htc/android/mail/huxservice/HuxRestoreAccount;Landroid/content/Context;Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mRequestHandler:Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mRequestHandler:Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    .line 35
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxRestoreAccount;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mIntent:Landroid/content/Intent;

    .line 36
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mIntent:Landroid/content/Intent;

    const-string v1, "CallingActivity"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mCallingActivity:I

    .line 37
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mIntent:Landroid/content/Intent;

    const-string v1, "verifyDeviceInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mVerifyDeviceInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;

    .line 39
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "HuxRestoreAccount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallingActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mCallingActivity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mVerifyDeviceInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->users:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUserEndPointInfo:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lcom/htc/android/mail/huxservice/HuxAccountUI;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;I)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    .line 44
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUserEndPointInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/huxservice/HuxAccountUI;->setAccountListAdapter(Ljava/util/ArrayList;)V

    .line 45
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 129
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxRestoreAccount"

    const-string v1, "onCreateDialog> "

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 165
    invoke-super {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 132
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b005a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0342

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0292

    new-instance v2, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$1;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$1;-><init>(Lcom/htc/android/mail/huxservice/HuxRestoreAccount;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b008e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiRestoreAcctDialogLayout:Landroid/view/View;

    const v1, 0x7f090163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "defaultAccount"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0331

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/huxservice/HuxRestoreAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiRestoreAcctDialogLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0334

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount;->confirmRestoreService:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0339

    new-instance v2, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$2;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$2;-><init>(Lcom/htc/android/mail/huxservice/HuxRestoreAccount;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->onPause()V

    .line 50
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxRestoreAccount"

    const-string v1, "onPause> "

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 170
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 171
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxRestoreAccount"

    const-string v1, "onPrepareDialog> "

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 180
    .end local p2
    :goto_0
    return-void

    .line 174
    .restart local p2
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiRestoreAcctDialogLayout:Landroid/view/View;

    const v1, 0x7f090163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiRestoreAcctDialogLayout:Landroid/view/View;

    const v1, 0x7f090165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 176
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiRestoreAcctDialogLayout:Landroid/view/View;

    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setView(Landroid/view/View;)V

    .line 177
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiDialogShowPassword:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->onResume()V

    .line 57
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxRestoreAccount"

    const-string v1, "onResume> "

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method protected selectSignInAccount(Landroid/view/View;I)V
    .locals 4
    .parameter "view"
    .parameter "position"

    .prologue
    .line 224
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HuxRestoreAccount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view.getTag()\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_0
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "HuxRestoreAccount"

    const-string v2, "in restore account"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;

    .line 227
    .local v0, userEndpointInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;
    iget-object v1, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    .line 228
    iget v1, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->endpointId:I

    iput v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEndPointId:I

    .line 229
    iget v1, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userEndpointId:I

    iput v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUserEndPointId:I

    .line 230
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    const/4 v2, 0x1

    const/16 v3, 0x67

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/huxservice/HuxAccountUI;->showDialog(ZI)V

    .line 231
    return-void
.end method

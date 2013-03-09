.class public Lcom/htc/android/mail/huxservice/HuxNewAccount;
.super Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
.source "HuxNewAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/huxservice/HuxNewAccount$HuxNewAccountRequestHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HuxNewAccount"


# instance fields
.field protected proceedGetTokenListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;-><init>()V

    .line 179
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxNewAccount$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/huxservice/HuxNewAccount$1;-><init>(Lcom/htc/android/mail/huxservice/HuxNewAccount;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxNewAccount;->proceedGetTokenListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method protected backScreen()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCurrentScreen:I

    sparse-switch v0, :sswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 124
    :sswitch_0
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/huxservice/HuxNewAccount;->setResult(I)V

    .line 125
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxNewAccount;->finish()V

    goto :goto_0

    .line 121
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method protected btnFncL()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCurrentScreen:I

    sparse-switch v0, :sswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 137
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxNewAccount;->backScreen()V

    goto :goto_0

    .line 134
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method protected btnFncR()V
    .locals 7

    .prologue
    const/16 v3, 0x64

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 143
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget v1, v1, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCurrentScreen:I

    sparse-switch v1, :sswitch_data_0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 145
    :sswitch_0
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/util/ParseMachine;->parseHuxPwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mPassword:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderStr:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/android/mail/huxservice/HUXUTIL;->getEndpointId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEndPointId:I

    .line 149
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/mail/huxservice/HuxNewAccount;->checkEmailAndPwd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const-string v1, "MSN"

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    const/16 v1, 0x6d

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/huxservice/HuxNewAccount;->showDialog(I)V

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/huxservice/HuxNewAccount;->showDialog(I)V

    .line 155
    const/4 v0, 0x0

    .line 159
    .local v0, body:Ljava/lang/String;
    iget v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEndPointId:I

    if-gez v1, :cond_2

    .line 160
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "POST/snc/user/authTwo/getToken"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 163
    :cond_2
    iget v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEndPointId:I

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mPassword:Ljava/lang/String;

    iget v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mTermsId:I

    invoke-static {v1, v2, v3, v5, v4}, Lcom/htc/android/mail/huxservice/HUXUTIL;->gen_getToken(ILjava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 169
    .end local v0           #body:Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxNewAccount;->checkSameAccountName()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 170
    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/huxservice/HuxNewAccount;->showDialog(I)V

    goto/16 :goto_0

    .line 172
    :cond_3
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/huxservice/HuxNewAccount;->showDialog(I)V

    .line 173
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/huxservice/HuxNewAccount;->doExchangeSettinsUpdate(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 143
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x1e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HuxNewAccount"

    const-string v2, "onCreate> "

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxNewAccount$HuxNewAccountRequestHandler;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p0}, Lcom/htc/android/mail/huxservice/HuxNewAccount$HuxNewAccountRequestHandler;-><init>(Lcom/htc/android/mail/huxservice/HuxNewAccount;Landroid/content/Context;Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mRequestHandler:Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;

    .line 32
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mRequestHandler:Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    .line 34
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxNewAccount;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mIntent:Landroid/content/Intent;

    .line 35
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mIntent:Landroid/content/Intent;

    const-string v2, "provider"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderStr:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mIntent:Landroid/content/Intent;

    const-string v2, "providerDesc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderDesc:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mIntent:Landroid/content/Intent;

    const-string v2, "CallingActivity"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mCallingActivity:I

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderDesc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - Sign in"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderTitle:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mIntent:Landroid/content/Intent;

    const-string v2, "verifyDeviceInfo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;

    .line 40
    .local v0, verifyDeviceInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->terms:Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;

    iget v1, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;->term_id:I

    iput v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mTermsId:I

    .line 42
    :cond_1
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "HuxNewAccount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CallingActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mCallingActivity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_2
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxAccountUI;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v2}, Lcom/htc/android/mail/huxservice/HuxAccountUI;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;I)V

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    .line 45
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->onPause()V

    .line 50
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxNewAccount"

    const-string v1, "onPause> "

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 111
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxNewAccount"

    const-string v1, "onPrepareDialog()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 117
    .end local p2
    :goto_0
    return-void

    .line 114
    .restart local p2
    :pswitch_0
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    const/4 v0, -0x1

    const v1, 0x7f0b0291

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/huxservice/HuxNewAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxNewAccount;->proceedGetTokenListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x6d
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

    const-string v0, "HuxNewAccount"

    const-string v1, "onResume> "

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method
